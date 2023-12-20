using NearestNeighbors

function KNN_Process(data, indiv, n=5)
    t0 = time()
    process = EncodeData(data, indiv)
    index = KNN(process[1], process[2], n)
    res_predict = round(sum(data[index,:success])/n,digits = 2)
    temps = time() - t0
    return [res_predict temps]
end

function KNN(X,pred,n = 5)
    balltree = BallTree(transpose(Matrix(X)), Minkowski(3); reorder = false)
    idxs , dist = knn(balltree, Vector(pred[1,:]), n, true)
    return idxs
end