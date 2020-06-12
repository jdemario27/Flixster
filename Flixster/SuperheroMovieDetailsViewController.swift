//
//  SuperheroMovieDetailsViewController.swift
//  Flixster
//
//  Created by Joseph  DeMario on 6/11/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit
import AlamofireImage

class SuperheroMovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var superheroMovie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        //print(superheroMovie["title"])
        
        titleLabel.text = superheroMovie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = superheroMovie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = superheroMovie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
                      
        posterView.af_setImage(withURL: posterURL!)
        
        let backdropPath = superheroMovie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
                      
        backdropView.af_setImage(withURL: backdropURL!)
    }
    
    @IBAction func tapOnPoster(_ sender: Any) {
        let location = sender.location(in: TrailerViewController)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }
    */
}
